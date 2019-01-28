.class public Lc8/cfg;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Lc8/Xeg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/efg;->scrollTo(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/efg;

.field final synthetic val$offset:I

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lc8/efg;II)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lc8/cfg;->this$0:Lc8/efg;

    iput p2, p0, Lc8/cfg;->val$orientation:I

    iput p3, p0, Lc8/cfg;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lc8/cfg;->this$0:Lc8/efg;

    new-instance v1, Lc8/bfg;

    invoke-direct {v1, p0}, Lc8/bfg;-><init>(Lc8/cfg;)V

    invoke-virtual {v0, v1}, Lc8/efg;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method
