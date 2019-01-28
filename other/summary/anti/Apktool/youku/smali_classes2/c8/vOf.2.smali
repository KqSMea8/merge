.class public Lc8/vOf;
.super Lc8/Cv;
.source "SmoothRecyclerScrollFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerScrollListener"
.end annotation


# instance fields
.field private mLastScrollState:I

.field final synthetic this$0:Lc8/xOf;


# direct methods
.method constructor <init>(Lc8/xOf;)V
    .locals 1
    .param p1, "this$0"    # Lc8/xOf;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/vOf;->this$0:Lc8/xOf;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lc8/vOf;->mLastScrollState:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 100
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lc8/vOf;->mLastScrollState:I

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lc8/vOf;->this$0:Lc8/xOf;

    invoke-static {v0, p1}, Lc8/xOf;->access$000(Lc8/xOf;Landroid/view/View;)V

    .line 104
    :cond_1
    iput p2, p0, Lc8/vOf;->mLastScrollState:I

    .line 105
    return-void
.end method
