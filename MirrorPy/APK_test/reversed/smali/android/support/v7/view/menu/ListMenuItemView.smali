.class public Landroid/support/v7/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    sget v0, Landroid/support/v7/appcompat/R$attr;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 77
    sget p3, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 78
    sget p3, Landroid/support/v7/appcompat/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 80
    sget p3, Landroid/support/v7/appcompat/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 82
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 83
    sget p1, Landroid/support/v7/appcompat/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .line 276
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_checkbox:I

    const/4 v2, 0x0

    .line 278
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 280
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertIconView()V
    .locals 3

    .line 261
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .line 268
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 269
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_radio:I

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 272
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 1

    .line 108
    iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 109
    iput p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mMenuType:I

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 92
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 95
    iget v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 101
    sget v0, Landroid/support/v7/appcompat/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 249
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 252
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 254
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 257
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 154
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 157
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 159
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 160
    iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_6

    .line 164
    iget-object v3, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    .line 167
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, p1, :cond_5

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_8

    .line 172
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2

    .line 176
    :cond_6
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_7

    .line 177
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 179
    :cond_7
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_8

    .line 180
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 195
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 197
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 200
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 223
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 224
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    return-void

    .line 228
    :cond_2
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    return-void

    .line 232
    :cond_3
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    .line 233
    invoke-direct {p0}, Landroid/support/v7/view/menu/ListMenuItemView;->insertIconView()V

    :cond_4
    if-nez p1, :cond_6

    .line 236
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 243
    :cond_5
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 237
    :cond_6
    :goto_2
    iget-object v2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 240
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    .line 214
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 218
    iget-object p2, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Landroid/support/v7/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
