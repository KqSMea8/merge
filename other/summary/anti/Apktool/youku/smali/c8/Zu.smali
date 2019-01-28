.class public Lc8/Zu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xu;,
        Lc8/Yu;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Lc8/Rq;

.field mMenuItemClickListener:Lc8/Yu;

.field mOnDismissListener:Lc8/Xu;

.field final mPopup:Lc8/fr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Zu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "gravity"    # I

    .prologue
    .line 78
    sget v4, Lcom/youku/phone/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lc8/Zu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "gravity"    # I
    .param p4, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p5, "popupStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lc8/Zu;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lc8/Zu;->mAnchor:Landroid/view/View;

    .line 103
    new-instance v0, Lc8/Rq;

    invoke-direct {v0, p1}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Zu;->mMenu:Lc8/Rq;

    .line 104
    iget-object v0, p0, Lc8/Zu;->mMenu:Lc8/Rq;

    new-instance v1, Lc8/Uu;

    invoke-direct {v1, p0}, Lc8/Uu;-><init>(Lc8/Zu;)V

    invoke-virtual {v0, v1}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 118
    new-instance v0, Lc8/fr;

    iget-object v2, p0, Lc8/Zu;->mMenu:Lc8/Rq;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/fr;-><init>(Landroid/content/Context;Lc8/Rq;Landroid/view/View;ZII)V

    iput-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    .line 119
    iget-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    invoke-virtual {v0, p3}, Lc8/fr;->setGravity(I)V

    .line 120
    iget-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    new-instance v1, Lc8/Vu;

    invoke-direct {v1, p0}, Lc8/Vu;-><init>(Lc8/Zu;)V

    invoke-virtual {v0, v1}, Lc8/fr;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    invoke-virtual {v0}, Lc8/fr;->dismiss()V

    .line 243
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lc8/Zu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lc8/Wu;

    iget-object v1, p0, Lc8/Zu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lc8/Wu;-><init>(Lc8/Zu;Landroid/view/View;)V

    iput-object v0, p0, Lc8/Zu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 191
    :cond_0
    iget-object v0, p0, Lc8/Zu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    invoke-virtual {v0}, Lc8/fr;->getGravity()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lc8/Zu;->mMenu:Lc8/Rq;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lc8/tq;

    iget-object v1, p0, Lc8/Zu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/tq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 224
    invoke-virtual {p0}, Lc8/Zu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lc8/Zu;->mMenu:Lc8/Rq;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 225
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    invoke-virtual {v0, p1}, Lc8/fr;->setGravity(I)V

    .line 141
    return-void
.end method

.method public setOnDismissListener(Lc8/Xu;)V
    .locals 0
    .param p1, "listener"    # Lc8/Xu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 261
    iput-object p1, p0, Lc8/Zu;->mOnDismissListener:Lc8/Xu;

    .line 262
    return-void
.end method

.method public setOnMenuItemClickListener(Lc8/Yu;)V
    .locals 0
    .param p1, "listener"    # Lc8/Yu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    iput-object p1, p0, Lc8/Zu;->mMenuItemClickListener:Lc8/Yu;

    .line 253
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lc8/Zu;->mPopup:Lc8/fr;

    invoke-virtual {v0}, Lc8/fr;->show()V

    .line 234
    return-void
.end method
