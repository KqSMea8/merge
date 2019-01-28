.class public final Lc8/spb;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mCustomView:Landroid/view/View;

.field private final mParent:Lc8/tpb;

.field private mPosition:I


# direct methods
.method constructor <init>(Lc8/tpb;)V
    .locals 1
    .param p1, "parent"    # Lc8/tpb;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lc8/spb;->mPosition:I

    .line 233
    iput-object p1, p0, Lc8/spb;->mParent:Lc8/tpb;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lc8/spb;)Lc8/tpb;
    .locals 1
    .param p0, "x0"    # Lc8/spb;

    .prologue
    .line 218
    iget-object v0, p0, Lc8/spb;->mParent:Lc8/tpb;

    return-object v0
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lc8/spb;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lc8/spb;->mPosition:I

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lc8/spb;->mParent:Lc8/tpb;

    invoke-virtual {v0}, Lc8/tpb;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lc8/spb;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public select()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lc8/spb;->mCustomView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lc8/spb;->mParent:Lc8/tpb;

    invoke-virtual {v0, p0}, Lc8/tpb;->selectTab(Lc8/spb;)V

    .line 262
    return-void
.end method

.method public setCustomView(Landroid/view/View;)Lc8/spb;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lc8/spb;->mCustomView:Landroid/view/View;

    .line 244
    iget v0, p0, Lc8/spb;->mPosition:I

    if-ltz v0, :cond_0

    .line 245
    iget-object v0, p0, Lc8/spb;->mParent:Lc8/tpb;

    iget v1, p0, Lc8/spb;->mPosition:I

    invoke-static {v0, v1}, Lc8/tpb;->access$100(Lc8/tpb;I)V

    .line 247
    :cond_0
    return-object p0
.end method

.method setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 255
    iput p1, p0, Lc8/spb;->mPosition:I

    .line 256
    return-void
.end method
