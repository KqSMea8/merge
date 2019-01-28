.class public Lc8/sq;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lc8/tq;


# direct methods
.method public constructor <init>(Lc8/tq;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    iput-object p1, p0, Lc8/sq;->this$0:Lc8/tq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lc8/sq;->menu:Landroid/view/Menu;

    .line 336
    invoke-virtual {p0}, Lc8/sq;->resetGroup()V

    .line 337
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 421
    if-nez p1, :cond_0

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lc8/sq;->this$0:Lc8/tq;

    iget-object v2, v2, Lc8/tq;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 503
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 504
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 506
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 429
    iget-boolean v2, p0, Lc8/sq;->itemChecked:Z

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v4, p0, Lc8/sq;->itemVisible:Z

    .line 430
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v4, p0, Lc8/sq;->itemEnabled:Z

    .line 431
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    iget v2, p0, Lc8/sq;->itemCheckable:I

    if-lez v2, :cond_1

    move v2, v3

    .line 432
    :goto_0
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, p0, Lc8/sq;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 433
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v4, p0, Lc8/sq;->itemIconResId:I

    .line 434
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-char v4, p0, Lc8/sq;->itemAlphabeticShortcut:C

    .line 435
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-char v4, p0, Lc8/sq;->itemNumericShortcut:C

    .line 436
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 438
    iget v2, p0, Lc8/sq;->itemShowAsAction:I

    if-ltz v2, :cond_0

    .line 439
    iget v2, p0, Lc8/sq;->itemShowAsAction:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 442
    :cond_0
    iget-object v2, p0, Lc8/sq;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 443
    iget-object v2, p0, Lc8/sq;->this$0:Lc8/tq;

    iget-object v2, v2, Lc8/tq;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 447
    :cond_2
    new-instance v2, Lc8/rq;

    iget-object v4, p0, Lc8/sq;->this$0:Lc8/tq;

    .line 448
    invoke-virtual {v4}, Lc8/tq;->getRealOwner()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lc8/sq;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lc8/rq;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 452
    :cond_3
    iget v2, p0, Lc8/sq;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_4

    .line 453
    instance-of v2, p1, Lc8/Vq;

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 454
    check-cast v2, Lc8/Vq;

    invoke-virtual {v2, v3}, Lc8/Vq;->setExclusiveCheckable(Z)V

    .line 460
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 461
    .local v1, "actionViewSpecified":Z
    iget-object v2, p0, Lc8/sq;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 462
    iget-object v2, p0, Lc8/sq;->itemActionViewClassName:Ljava/lang/String;

    sget-object v3, Lc8/tq;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v4, p0, Lc8/sq;->this$0:Lc8/tq;

    iget-object v4, v4, Lc8/tq;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v2, v3, v4}, Lc8/sq;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 464
    .local v0, "actionView":Landroid/view/View;
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 465
    const/4 v1, 0x1

    .line 467
    .end local v0    # "actionView":Landroid/view/View;
    :cond_5
    iget v2, p0, Lc8/sq;->itemActionViewLayout:I

    if-lez v2, :cond_6

    .line 468
    if-nez v1, :cond_6

    .line 469
    iget v2, p0, Lc8/sq;->itemActionViewLayout:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 476
    :cond_6
    iget-object v2, p0, Lc8/sq;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_7

    .line 477
    iget-object v2, p0, Lc8/sq;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 479
    :cond_7
    return-void

    .line 455
    .end local v1    # "actionViewSpecified":Z
    :cond_8
    instance-of v2, p1, Lc8/ar;

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 456
    check-cast v2, Lc8/ar;

    invoke-virtual {v2, v3}, Lc8/ar;->setExclusiveCheckable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/sq;->itemAdded:Z

    .line 483
    iget-object v0, p0, Lc8/sq;->menu:Landroid/view/Menu;

    iget v1, p0, Lc8/sq;->groupId:I

    iget v2, p0, Lc8/sq;->itemId:I

    iget v3, p0, Lc8/sq;->itemCategoryOrder:I

    iget-object v4, p0, Lc8/sq;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/sq;->setItem(Landroid/view/MenuItem;)V

    .line 484
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/sq;->itemAdded:Z

    .line 488
    iget-object v1, p0, Lc8/sq;->menu:Landroid/view/Menu;

    iget v2, p0, Lc8/sq;->groupId:I

    iget v3, p0, Lc8/sq;->itemId:I

    iget v4, p0, Lc8/sq;->itemCategoryOrder:I

    iget-object v5, p0, Lc8/sq;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 489
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/sq;->setItem(Landroid/view/MenuItem;)V

    .line 490
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lc8/sq;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    iget-object v1, p0, Lc8/sq;->this$0:Lc8/tq;

    iget-object v1, v1, Lc8/tq;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/youku/phone/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lc8/sq;->groupId:I

    .line 355
    sget v1, Lcom/youku/phone/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/sq;->groupCategory:I

    .line 357
    sget v1, Lcom/youku/phone/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/sq;->groupOrder:I

    .line 358
    sget v1, Lcom/youku/phone/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/sq;->groupCheckable:I

    .line 360
    sget v1, Lcom/youku/phone/R$styleable;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/sq;->groupVisible:Z

    .line 361
    sget v1, Lcom/youku/phone/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/sq;->groupEnabled:Z

    .line 363
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 370
    iget-object v4, p0, Lc8/sq;->this$0:Lc8/tq;

    iget-object v4, v4, Lc8/tq;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/youku/phone/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 373
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_id:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lc8/sq;->itemId:I

    .line 374
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_menuCategory:I

    iget v7, p0, Lc8/sq;->groupCategory:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 375
    .local v1, "category":I
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_orderInCategory:I

    iget v7, p0, Lc8/sq;->groupOrder:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 376
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v7, 0xffff

    and-int/2addr v7, v3

    or-int/2addr v4, v7

    iput v4, p0, Lc8/sq;->itemCategoryOrder:I

    .line 378
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lc8/sq;->itemTitle:Ljava/lang/CharSequence;

    .line 379
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lc8/sq;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 380
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lc8/sq;->itemIconResId:I

    .line 381
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 382
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/sq;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lc8/sq;->itemAlphabeticShortcut:C

    .line 383
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_numericShortcut:I

    .line 384
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/sq;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lc8/sq;->itemNumericShortcut:C

    .line 385
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lc8/sq;->itemCheckable:I

    .line 393
    :goto_1
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lc8/sq;->itemChecked:Z

    .line 394
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_visible:I

    iget-boolean v7, p0, Lc8/sq;->groupVisible:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lc8/sq;->itemVisible:Z

    .line 395
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v7, p0, Lc8/sq;->groupEnabled:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lc8/sq;->itemEnabled:Z

    .line 396
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_showAsAction:I

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lc8/sq;->itemShowAsAction:I

    .line 397
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/sq;->itemListenerMethodName:Ljava/lang/String;

    .line 398
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lc8/sq;->itemActionViewLayout:I

    .line 399
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/sq;->itemActionViewClassName:Ljava/lang/String;

    .line 400
    sget v4, Lcom/youku/phone/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/sq;->itemActionProviderClassName:Ljava/lang/String;

    .line 402
    iget-object v4, p0, Lc8/sq;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    move v2, v5

    .line 403
    .local v2, "hasActionProvider":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v4, p0, Lc8/sq;->itemActionViewLayout:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lc8/sq;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 404
    iget-object v4, p0, Lc8/sq;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v5, Lc8/tq;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v7, p0, Lc8/sq;->this$0:Lc8/tq;

    iget-object v7, v7, Lc8/tq;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v4, v5, v7}, Lc8/sq;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ActionProvider;

    iput-object v4, p0, Lc8/sq;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 415
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    iput-boolean v6, p0, Lc8/sq;->itemAdded:Z

    .line 418
    return-void

    .end local v2    # "hasActionProvider":Z
    :cond_0
    move v4, v6

    .line 387
    goto :goto_0

    .line 391
    :cond_1
    iget v4, p0, Lc8/sq;->groupCheckable:I

    iput v4, p0, Lc8/sq;->itemCheckable:I

    goto :goto_1

    :cond_2
    move v2, v6

    .line 402
    goto :goto_2

    .line 412
    .restart local v2    # "hasActionProvider":Z
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/sq;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lc8/sq;->groupId:I

    .line 341
    iput v0, p0, Lc8/sq;->groupCategory:I

    .line 342
    iput v0, p0, Lc8/sq;->groupOrder:I

    .line 343
    iput v0, p0, Lc8/sq;->groupCheckable:I

    .line 344
    iput-boolean v1, p0, Lc8/sq;->groupVisible:Z

    .line 345
    iput-boolean v1, p0, Lc8/sq;->groupEnabled:Z

    .line 346
    return-void
.end method