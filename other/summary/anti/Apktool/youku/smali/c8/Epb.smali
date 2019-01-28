.class public Lc8/Epb;
.super Lc8/scg;
.source "WXMask.java"


# instance fields
.field private mContainerView:Lc8/Uvb;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lc8/scg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lc8/Epb;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Epb;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lc8/Epb;->fireVisibleChangedEvent(Z)V

    return-void
.end method

.method private fireVisibleChangedEvent(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 196
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "visible"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v1, "visiblechanged"

    invoke-virtual {p0, v1, v0}, Lc8/Epb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    return-void
.end method


# virtual methods
.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x30

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 148
    new-instance v0, Lc8/Uvb;

    invoke-direct {v0, p1}, Lc8/Uvb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Epb;->mContainerView:Lc8/Uvb;

    .line 149
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 150
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 159
    :cond_0
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lc8/Epb;->mContainerView:Lc8/Uvb;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 161
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 162
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 164
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 166
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lc8/Dpb;

    invoke-direct {v1, p0}, Lc8/Dpb;-><init>(Lc8/Epb;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 173
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Lc8/Epb;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getLayoutX()F

    move-result v2

    float-to-int v2, v2

    .line 176
    invoke-virtual {p0}, Lc8/Epb;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getLayoutY()F

    move-result v3

    float-to-int v3, v3

    .line 173
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 177
    invoke-direct {p0, v4}, Lc8/Epb;->fireVisibleChangedEvent(Z)V

    .line 179
    iget-object v0, p0, Lc8/Epb;->mContainerView:Lc8/Uvb;

    return-object v0
.end method

.method public isVirtualComponent()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public removeVirtualComponent()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lc8/Epb;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 192
    :cond_0
    return-void
.end method
