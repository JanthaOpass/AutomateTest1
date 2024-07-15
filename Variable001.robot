*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_login}                               https://automate-test.stpb-digital.com/
${Browser}                                 Chrome
${locator_email}                           id=email
${locator_pass}                            name=password
${locator_btnlogin}                        id=btn-login

${locator_pro1}                            xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/span
${locator_logout}                          xpath=/html/body/div[3]/div[3]/ul/li
#${locator_noticc}                          css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > header > div > div > div.actions-right.MuiBox-root.css-70qvj9 > button
${locator_notic}                           xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/button


${locator_select-role}                     id=select-role
${locator_ul_role}                         xpath=//*[@id="menu-"]/div[3]/ul
${locator_select-plan}                     id=select-plan
${locator_select-status}                   id=select-status
${locator_btn-clear}                       id=btn-clear
${locator_btn-search}                      xpath=//*[@id="btn-search"]
${locator_btnadd}                          css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiBox-root.css-qeuhnc > div > a
${locator_user}                            xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[1]/div[1]/div[1]/div[1]/div


${locator_row}                             css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div:nth-child(3) > div > div.MuiTablePagination-root.css-u1jk8u > div > div.MuiInputBase-root.MuiInputBase-colorPrimary.css-41e7tq > input
${locator_row111}                          css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div:nth-child(3) > div > div.MuiTablePagination-root.css-u1jk8u > div > div.MuiInputBase-root.MuiInputBase-colorPrimary.css-41e7tq
${locator_row1}                            css=#menu- > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li:nth-child(2)
${locator_select-role-1}                   id=option-select-role-1
${locator_select-role-2}                   id=option-select-role-2
${locator_select-role-3}                   id=option-select-role-3
${locator_select-role-4}                   id=option-select-role-4
${locator_select-plan-1}                   id=option-select-plan-1
${locator_select-plan-2}                   id=option-select-plan-2
${locator_select-status-1}                 id=option-select-status-1
${locator_next}                            css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div:nth-child(3) > div > div.MuiTablePagination-root.css-u1jk8u > div > div.MuiTablePagination-actions > button:nth-child(2)
${locator_select-status-2}                 id=option-select-status-2
${locator_select-status-3}                 id=option-select-status-3
${locator_sign-up}                         xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/button
${locator_back}                            xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[1]/button
${locator_role-0}                          id=option-select-role-0
${locator_plan-0}                          id=option-select-plan-0
${locator_status-0}                        id=option-select-status-0

${url}                                     https://automate-test.stpb-digital.com/user/form/
${locator_firstname}                       id=firstname
${locator_lastname}                        id=lastname
${locator_email}                           id=email
${locator_password}                        id=password
${locator_mobile-phone}                    id=mobile-phone
${locator_gender}                          validation-basic-radio
${locator_checkSQL}                        name=courses.SQL
${locator_checkTM}                         name=courses.Test Manual
${locator_checkAT}                         name=courses.Automate Test
${locator_checkAT2}                        name=courses.Automate Test2
${locator_nationality}                     id=nationality
${locator_nationality1}                    xpath=//*[@id="menu-"]/div[3]/ul/li[221]
${locator_select-role}                     id=select-role
${locator_select-role1}                    xpath=//*[@id="menu-"]/div[3]/ul/li[3]
${locator_select-plan}                     id=select-plan
${locator_select-plan1}                    xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_btn}                             id=btn-sign-up
${locator_btn-ok}                          id=btn-ok
${locator_hyperlink-reset}                 id=reset

${locator_error-firstname}                 id=error-firstname
${locator_error-lastname}                  id=error-lastname
${locator_error-email}                     id=error-email
${locator_error-password}                  id=error-password
${locator_error-mobile-phone}              id=error-mobile-phone
${locator_error-gender}                    id=validation-basic-gender 
${locator_error-courses}                   id=validation-basic-courses
${locator_error-nationality}               id=validation-basic-nationality
${locator_error-role}                      id=validation-role 
${locator_error-plan}                      id=validation-plan