<?php
/**
 * Created by PhpStorm.
 * User: Beautynight
 * Date: 08.07.2016
 * Time: 22:49
 */

namespace Helpers\Locales {

    class Ru {
        public static function getLocale() {
            return [
                'login_is_busy'     => 'Данный логин уже зарегистрирован. Введите другой',
                'email_is_busy'     => 'Данный email уже зарегистрирован. Введите другой',
                'no_user'           => 'Пользователь не найден',
                'bad_password'      => 'Неверный пароль',
                'check'             => 'проверить',
                'add_project'       => 'Добавление проекта',
                'project_name'      => 'Название проекта',
                'project_url'       => 'Ссылка на проект (либо реферальная ссылка)',
                'start_date'        => 'Дата начала проекта',
                'description'       => 'Описание',
                'payment_type'      => ['Тип выплат', 'Ручной', 'Инстант (мгновенный)', 'Автоматический'],
                'plans'             => 'Тарифные планы',
                'profit'            => 'Прибыль',
                'after'             => 'через',
                'period'            => ['','минут','часов','дней','недель','месяцев','лет'],
                'from'              => 'от',
                'remove'            => 'Удалить',
                'add_plan'          => 'Добавить план',
                'ref_program'       => 'Реферальная программа',
                'level'             => 'уровень',
                'add_level'         => 'Добавить уровень',
                'payment_system'    => 'Платёжные системы',
                'languages'         => 'Языки сайта',
                'show_all_langs'    => 'Показать все языки',
                'screenshot'        => 'Скриншот сайта',
                'preview'           => 'Эскиз',
                'select_file'       => 'Выбрать файл',
                'view'              => 'Просмотр',
                'close'             => 'Закрыть',
                'download'          => 'Скачать',
                'send_form'         => 'Отправить форму',
                'remember'          => 'Запомнить',
                'yes'               => 'Да',
                'no'                => 'Нет',
                'or'                => 'или',
                'enter'             => 'Войти',
                'registration'      => 'Регистрация',
                'user_registration' => 'Регистрация пользователя',
                'login'             => 'Логин',
                'name'              => 'Имя',
                'email'             => 'Email',
                'password'          => 'Пароль',
                'repeat_password'   => 'Повторите пароль',
                'auth_4_add_project'=> 'Только авторизованные пользователи могут добавлять проекты',
            ];
        }
    }
}