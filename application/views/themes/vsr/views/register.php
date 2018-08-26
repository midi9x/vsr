<section id="main-content">
    <div class="container">
        <div class="row content">
            <div class="col-md-8 offset-md-2 id="primary">
                <h3 class="title text-none">Đăng ký</h3>
                    <?php echo form_open('clients/register'); ?>
                        <div class="panel_s register">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group mtop15">
                                            <label class="control-label" for="firstname"><?php echo _l('clients_firstname'); ?> (<span class="required">*</span>)</label>
                                            <input type="text" class="form-control" name="firstname" id="firstname" value="<?php echo set_value('firstname'); ?>">
                                            <?php echo form_error('firstname'); ?>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="lastname"><?php echo _l('clients_lastname'); ?> (<span class="required">*</span>)</label>
                                            <input type="text" class="form-control" name="lastname" id="lastname" value="<?php echo set_value('lastname'); ?>">
                                            <?php echo form_error('lastname'); ?>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="email"><?php echo _l('clients_email'); ?> (<span class="required">*</span>)</label>
                                            <input type="email" class="form-control" name="email" id="email" value="<?php echo set_value('email'); ?>">
                                            <?php echo form_error('email'); ?>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="contact_phonenumber"><?php echo _l('clients_phone'); ?> (<span class="required">*</span>)</label>
                                            <input type="text" class="form-control" name="contact_phonenumber" id="contact_phonenumber" value="<?php echo set_value('contact_phonenumber'); ?>">
                                            <?php echo form_error('contact_phonenumber'); ?>
                                        </div>

                                        <?php echo render_custom_fields( 'contacts','',array('show_on_client_portal'=>1)); ?>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group mtop15">
                                            <label class="control-label" for="company"><?php echo _l('clients_company'); ?></label>
                                            <input type="text" class="form-control" name="company" id="company" value="<?php echo set_value('company'); ?>">
                                            <?php echo form_error('company'); ?>
                                        </div>

                                        <div class="form-group d-none">
                                            <label class="control-label" for="country"><?php echo _l('clients_country'); ?></label>
                                            <select style="height: auto" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" data-live-search="true" name="country" class="form-control" id="country">
                                                <option value=""></option>
                                                <?php foreach(get_all_countries() as $country){ ?>
                                                <option value="<?php echo $country['country_id']; ?>"<?php if(get_option('customer_default_country') == $country['country_id']){echo ' selected';} ?> <?php echo set_select('country', $country['country_id']); ?>><?php echo $country['short_name']; ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="form-group d-none">
                                            <label class="control-label" for="website"><?php echo _l('client_website'); ?></label>
                                            <input type="text" class="form-control" name="website" id="website" value="<?php echo set_value('website'); ?>">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="title"><?php echo _l('contact_position'); ?></label>
                                            <input type="text" class="form-control" name="title" id="title" value="<?php echo set_value('title'); ?>">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="password"><?php echo _l('clients_register_password'); ?> (<span class="required">*</span>)</label>
                                            <input type="password" class="form-control" name="password" id="password">
                                            <?php echo form_error('password'); ?>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="passwordr"><?php echo _l('clients_register_password_repeat'); ?> (<span class="required">*</span>)</label>
                                            <input type="password" class="form-control" name="passwordr" id="passwordr">
                                            <?php echo form_error('passwordr'); ?>
                                        </div>

                                        <?php echo render_custom_fields( 'customers','',array('show_on_client_portal'=>1)); ?>
                                    </div>
                                    <?php if (is_gdpr() && get_option('gdpr_enable_terms_and_conditions') == 1) { ?>
                                        <div class="col-md-12">
                                            <div class="text-center">
                                                <div class="checkbox">
                                                    <input type="checkbox" name="accept_terms_and_conditions" id="accept_terms_and_conditions" <?php echo set_checkbox('accept_terms_and_conditions', 'on'); ?>>
                                                    <label for="accept_terms_and_conditions">
                                                        <?php echo _l('gdpr_terms_agree', terms_url()); ?>
                                                    </label>
                                                </div>
                                                <?php echo form_error('accept_terms_and_conditions'); ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="control-label" for="group">Chọn nhóm khách hàng (<span class="required">*</span>)</label>
                                            <select style="height: auto" data-none-selected-text="<?php echo _l('dropdown_non_selected_tex'); ?>" data-live-search="true" name="groups_in[]" class="form-control" id="group" multiple>
                                                <?php foreach($groups as $group){ ?>
                                                <option value="<?php echo $group['id']; ?>" <?php echo set_select('groups_in[]', $group['id']); ?>><?php echo $group['name']; ?></option>
                                                <?php } ?>
                                            </select>
                                            <?php echo form_error('groups_in[]'); ?>
                                        </div>
                                    </div>
                                    <?php if(get_option('use_recaptcha_customers_area') == 1 && get_option('recaptcha_secret_key') != '' && get_option('recaptcha_site_key') != ''){ ?>
                                    <div class="col-md-12">
                                       <div class="g-recaptcha" data-sitekey="<?php echo get_option('recaptcha_site_key'); ?>"></div>
                                       <?php echo form_error('g-recaptcha-response'); ?>
                                    </div>
                                    <?php } ?>
                                    <div class="col-md-12 text-center">
                                        <div class="form-group">
                                            <button type="submit" autocomplete="off" data-loading-text="<?php echo _l('wait_text'); ?>" class="btn btn btn-success btn-block w-100"><?php echo _l('clients_register_string'); ?></button>
                                        </div>
                                    </div>
                                </div>
                           </div>
                       </div>
                    <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</section>
