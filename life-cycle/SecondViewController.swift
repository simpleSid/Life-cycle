//
//  SecondViewController.swift
//  life-cycle
//
//  Created by Денис Сидоренко on 04/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var property: String? {
        didSet {
            print("property is changed now!")
        }
    }
    
    
//    //  используется при ручной инициализации view
//    override func loadView() {
//        // инициализация view
//    }
    
    
    // срабатывает до загрузки view (не является частью жц)  вызывается у контроллера который задан с помощью СБ
    override func awakeFromNib() {
        super.awakeFromNib()
        print("Second view controller \(#function)")
    }
    
    
    // срабатывает после загрузки view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Second view controller \(#function)")
        
        // инициализация переменных и объектов
    }
    
    
    // срабатывает перед появлением view на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Second view controller \(#function)")
        
        //для более тонкой настройки view которую можно сделать без анимации
    }
    
    
    override func updateViewConstraints() {
        // изменение значения констант констрейнтов
        print("Second view controller \(#function)")
        super.updateViewConstraints()
    }
    
    
    // срабатывает перед тем как размер view поменяется под размер экрана
    override func viewWillLayoutSubviews() {
        print("Second view controller \(#function)")
        // изменение размеров Subviews и их положение
    }
    
    
    // срабатывает после того как размер view изменился под размер экрана
    // вызывается чтобы убедиться что правильно отработал Autolayout
    override func viewDidLayoutSubviews() {
        print("Second view controller \(#function)")
        //сохранение последнего состояния элемента (например последнюю выделенную ячейку)
    }
    
    
    // срабатывает после появлением view на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Second view controller \(#function)")
        // можно что-то показать (например сразу выделить поле для ввода)
    }
    
    
    // срабатывает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("Second view controller \(#function)")
        // обработка анимации при повороте
    }
    
    
    
    // срабатывает когда приложение может быть закрыто из-за нехватки памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // обнулить объекты которые не используются, сохранить необходимые данные, уведомить пользователя о закрытии
    }
    
    
    // срабатывает перед тем как view будет закрыто
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Second view controller \(#function)")
        // сброс значений параметров, отключение анимации (например отменить выделение конкрентного поля ввода, почистить данные или обнулить кеш)
    }
    
    
    // срабатывает после того как view закрылось
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Second view controller \(#function)")
        // сброс значений параметров. В отличии от viewWillDisappear этот метод вызывается после анимации удаления view
    }
    
    
    // срабатывает когда объект выгружается из памяти (не является частью жц)
    deinit {
        print("Second view controller \(#function)")
    }
    
    
    
    @IBAction func closeVC(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
