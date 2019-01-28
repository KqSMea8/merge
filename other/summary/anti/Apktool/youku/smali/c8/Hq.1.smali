.class public Lc8/Hq;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final menu:Lc8/Rq;

.field public final position:I

.field public final window:Lc8/Mu;


# direct methods
.method public constructor <init>(Lc8/Mu;Lc8/Rq;I)V
    .locals 0
    .param p1, "window"    # Lc8/Mu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lc8/Rq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "position"    # I

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lc8/Hq;->window:Lc8/Mu;

    .line 743
    iput-object p2, p0, Lc8/Hq;->menu:Lc8/Rq;

    .line 744
    iput p3, p0, Lc8/Hq;->position:I

    .line 745
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lc8/Hq;->window:Lc8/Mu;

    invoke-virtual {v0}, Lc8/Mu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
