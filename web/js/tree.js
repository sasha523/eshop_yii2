(function(_, $) {

    _.tr({
        cannot_buy: 'Невозможно купить этот товар с выбранными вариантами опций',
        no_products_selected: 'Товары не выбраны',
        error_no_items_selected: 'Нет выбранных элементов! Для выполнения этого действия должен быть выбран хотя бы один элемент.',
        delete_confirmation: 'Вы уверены, что хотите удалить выбранные записи?',
        text_out_of_stock: 'Нет в наличии',
        items: 'шт.',
        text_required_group_product: 'Пожалуйста, выберите товар для указанной группы [group_name]',
        save: 'Сохранить',
        close: 'Закрыть',
        notice: 'Оповещение',
        warning: 'Предупреждение',
        error: 'Ошибка',
        empty: 'Пусто',
        text_are_you_sure_to_proceed: 'Вы уверены, что хотите продолжить?',
        text_invalid_url: 'Вы ввели неправильную ссылку',
        error_validator_email: 'Email в поле <b>[field]<\/b> неверен.',
        error_validator_phone: 'Неверный номер телефона в поле <b>[field]<\/b>. Правильный формат: (555) 555-55-55.',
        error_validator_integer: 'Значение поля <b>[field]<\/b> неправильное. Значение должно быть целым числом.',
        error_validator_multiple: 'Поле <b>[field]<\/b> не имеет выбранных параметров.',
        error_validator_password: 'Пароли в полях <b>[field2]<\/b> и <b>[field]<\/b> не совпадают.',
        error_validator_required: 'Поле <b>[field]<\/b> обязательное.',
        error_validator_zipcode: 'Неверный почтовый индекс в поле <b>[field]<\/b>. Правильный формат: [extra].',
        error_validator_message: 'Значение поля <b>[field]<\/b> - неправильно.',
        text_page_loading: 'Загрузка... ваш запрос выполняется, пожалуйста, подождите.',
        error_ajax: 'Ой, произошла ошибка ([error]). Пожалуйста, попробуйте еще раз.',
        text_changes_not_saved: 'Сделанные изменения не были сохранены.',
        text_data_changed: 'Сделанные изменения не были сохранены.Нажмите OK, чтобы продолжить, или Cancel, чтобы остаться на странице.',
        placing_order: 'Идет размещение заказа',
        file_browser: 'Найти файл',
        browse: 'Найти...',
        more: 'Еще',
        text_no_products_found: 'Товары не найдены',
        cookie_is_disabled: 'Для совершения покупок пожалуйста, <a href=\"http://www.wikihow.com/Enable-Cookies-in-Your-Internet-Web-Browser\" target=\"_blank\">разрешите принимать cookie<\/a> в своем браузере',
        insert_image: 'Добавить изображение',
        image_url: 'URL изображения'
    });

    $.extend(_, {
        index_script: 'index.php',
        changes_warning: /*'Y'*/'N',
        currencies: {
            'primary': {
                'decimals_separator': '.',
                'thousands_separator': '&nbsp;',
                'decimals': '0'
            },
            'secondary': {
                'decimals_separator': '.',
                'thousands_separator': '&nbsp;',
                'decimals': '0',
                'coefficient': '1.00000'
            }
        },
        default_editor: 'redactor',
        default_previewer: 'magnific',
        current_path: '',
        current_location: 'https://unitheme.net',
        images_dir: 'https://unitheme.net/design/themes/responsive/media/images',
        notice_displaying_time: 5,
        cart_language: 'ru',
        language_direction: 'ltr',
        default_language: 'ru',
        cart_prices_w_taxes: false,
        theme_name: 'abt__unitheme',
        regexp: [],
        current_url: 'https://unitheme.net/elektronika/foto-video/cifrovye-fotoapparaty/samsung-mv800/',
        current_host: 'unitheme.net',
        init_context: ''
    });

    
    
        $(document).ready(function(){
            $.runCart('C');
        });

    
            // CSRF form protection key
        _.security_hash = 'fd3b082655de2657625ff0564f576b43';
    }(Tygh, Tygh.$));