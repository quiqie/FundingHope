authorization do
  role :admin do
    has_permission_on :products, :to => [:view, :edit, :destroy, :create]
  end
  role :agent do
    has_permission_on :products, :to => [:view, :edit, :create]
  end
  role :donor do
    has_permission_on :products, :to => [:view, :donate]
  end
  role :guest do
    has_permission_on :products, :to => [:view]
  end
end