class ApplicationHelper::Toolbar::AuthKeyPairCloudsCenter < ApplicationHelper::Toolbar::Basic
  button_group('auth_key_pair_cloud_vmdb', [
    select(
      :auth_key_pair_cloud_vmdb_choice,
      'fa fa-cog fa-lg',
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :auth_key_pair_cloud_new,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a new Key Pair'),
          t,
          :klass => ApplicationHelper::Button::AuthKeyPairCloudCreate),
        separator,
        button(
          :auth_key_pair_cloud_delete,
          'pficon pficon-delete fa-lg',
          t = N_('Remove selected Key Pairs from Inventory'),
          t,
          :url_parms => "main_div",
          :confirm   => N_("Warning: The selected Key Pairs and ALL of their components will be permanently removed!"),
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
  button_group('auth_key_pair_cloud_policy', [
    select(
      :auth_key_pair_cloud_policy_choice,
      'fa fa-shield fa-lg',
      t = N_('Policy'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :auth_key_pair_cloud_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit tags for the selected items'),
          N_('Edit Tags'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
end
