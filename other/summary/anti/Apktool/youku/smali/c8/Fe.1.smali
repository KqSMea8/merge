.class public final Lc8/Fe;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mParent:Lc8/Ke;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lc8/Ie;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    const/4 v0, -0x1

    iput v0, p0, Lc8/Fe;->mPosition:I

    .line 1256
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1481
    iget-object v0, p0, Lc8/Fe;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1287
    iget-object v0, p0, Lc8/Fe;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lc8/Fe;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lc8/Fe;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Lc8/Fe;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lc8/Fe;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    if-nez v0, :cond_0

    .line 1434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_0
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    invoke-virtual {v0}, Lc8/Ke;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lc8/Fe;->mPosition:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1491
    iput-object v1, p0, Lc8/Fe;->mParent:Lc8/Ke;

    .line 1492
    iput-object v1, p0, Lc8/Fe;->mView:Lc8/Ie;

    .line 1493
    iput-object v1, p0, Lc8/Fe;->mTag:Ljava/lang/Object;

    .line 1494
    iput-object v1, p0, Lc8/Fe;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1495
    iput-object v1, p0, Lc8/Fe;->mText:Ljava/lang/CharSequence;

    .line 1496
    iput-object v1, p0, Lc8/Fe;->mContentDesc:Ljava/lang/CharSequence;

    .line 1497
    const/4 v0, -0x1

    iput v0, p0, Lc8/Fe;->mPosition:I

    .line 1498
    iput-object v1, p0, Lc8/Fe;->mCustomView:Landroid/view/View;

    .line 1499
    return-void
.end method

.method public select()V
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    if-nez v0, :cond_0

    .line 1424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :cond_0
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    invoke-virtual {v0, p0}, Lc8/Ke;->selectTab(Lc8/Fe;)V

    .line 1427
    return-void
.end method

.method public setContentDescription(I)Lc8/Fe;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1450
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    if-nez v0, :cond_0

    .line 1451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_0
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    invoke-virtual {v0}, Lc8/Ke;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Fe;->setContentDescription(Ljava/lang/CharSequence;)Lc8/Fe;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lc8/Fe;
    .locals 0
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1467
    iput-object p1, p0, Lc8/Fe;->mContentDesc:Ljava/lang/CharSequence;

    .line 1468
    invoke-virtual {p0}, Lc8/Fe;->updateView()V

    .line 1469
    return-object p0
.end method

.method public setCustomView(I)Lc8/Fe;
    .locals 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1325
    iget-object v1, p0, Lc8/Fe;->mView:Lc8/Ie;

    invoke-virtual {v1}, Lc8/Ie;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1326
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lc8/Fe;->mView:Lc8/Ie;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Fe;->setCustomView(Landroid/view/View;)Lc8/Fe;

    move-result-object v1

    return-object v1
.end method

.method public setCustomView(Landroid/view/View;)Lc8/Fe;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1305
    iput-object p1, p0, Lc8/Fe;->mCustomView:Landroid/view/View;

    .line 1306
    invoke-virtual {p0}, Lc8/Fe;->updateView()V

    .line 1307
    return-object p0
.end method

.method public setIcon(I)Lc8/Fe;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :cond_0
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    invoke-virtual {v0}, Lc8/Ke;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Fe;->setIcon(Landroid/graphics/drawable/Drawable;)Lc8/Fe;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lc8/Fe;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1371
    iput-object p1, p0, Lc8/Fe;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1372
    invoke-virtual {p0}, Lc8/Fe;->updateView()V

    .line 1373
    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1350
    iput p1, p0, Lc8/Fe;->mPosition:I

    .line 1351
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lc8/Fe;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1274
    iput-object p1, p0, Lc8/Fe;->mTag:Ljava/lang/Object;

    .line 1275
    return-object p0
.end method

.method public setText(I)Lc8/Fe;
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1413
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    if-nez v0, :cond_0

    .line 1414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1416
    :cond_0
    iget-object v0, p0, Lc8/Fe;->mParent:Lc8/Ke;

    invoke-virtual {v0}, Lc8/Ke;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Fe;->setText(Ljava/lang/CharSequence;)Lc8/Fe;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lc8/Fe;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1399
    iput-object p1, p0, Lc8/Fe;->mText:Ljava/lang/CharSequence;

    .line 1400
    invoke-virtual {p0}, Lc8/Fe;->updateView()V

    .line 1401
    return-object p0
.end method

.method updateView()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lc8/Fe;->mView:Lc8/Ie;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lc8/Fe;->mView:Lc8/Ie;

    invoke-virtual {v0}, Lc8/Ie;->update()V

    .line 1488
    :cond_0
    return-void
.end method
