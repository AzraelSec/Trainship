.class public Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;
.super Landroid/support/v7/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 0

    .line 972
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 973
    iput-object p2, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 974
    iput-object p3, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 975
    new-instance p1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 976
    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 977
    iget-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 1039
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1041
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 3

    .line 992
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-boolean v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-boolean v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iput-object p0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/support/v7/view/ActionMode;

    .line 1005
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iput-object v1, v0, Landroid/support/v7/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/support/v7/view/ActionMode$Callback;

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    :goto_0
    const/4 v0, 0x0

    .line 1009
    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 1010
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1013
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->closeMode()V

    .line 1014
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1016
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v1, v1, Landroid/support/v7/app/WindowDecorActionBar;->mOverlayLayout:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-boolean v2, v2, Landroid/support/v7/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1018
    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iput-object v0, v1, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1096
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 987
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 982
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1080
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1075
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 1023
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mActionMode:Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1032
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1091
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1100
    iget-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    .line 1101
    iget-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {p1, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .line 1127
    iget-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez p1, :cond_0

    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1131
    iget-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object p1, p1, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 3

    .line 1111
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1115
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 1119
    :cond_1
    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object v2, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v2}, Landroid/support/v7/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    return v1
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1050
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1070
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1055
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1065
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1060
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1085
    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1086
    iget-object v0, p0, Landroid/support/v7/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, v0, Landroid/support/v7/app/WindowDecorActionBar;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method