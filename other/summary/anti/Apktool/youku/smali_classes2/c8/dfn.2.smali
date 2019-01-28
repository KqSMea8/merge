.class public Lc8/dfn;
.super Ljava/lang/Thread;
.source "DownloadAccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ofn;


# direct methods
.method constructor <init>(Lc8/ofn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ofn;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/dfn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 69
    iget-object v0, p0, Lc8/dfn;->this$0:Lc8/ofn;

    invoke-static {v0}, Lc8/ofn;->access$000(Lc8/ofn;)V

    .line 70
    return-void
.end method
