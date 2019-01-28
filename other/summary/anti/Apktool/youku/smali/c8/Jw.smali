.class public Lc8/Jw;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qw;


# direct methods
.method constructor <init>(Lc8/Qw;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qw;

    .prologue
    .line 221
    iput-object p1, p0, Lc8/Jw;->this$0:Lc8/Qw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/Jw;->this$0:Lc8/Qw;

    invoke-virtual {v0}, Lc8/Qw;->checkForGaps()Z

    .line 225
    return-void
.end method
