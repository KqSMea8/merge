.class public Lc8/jfn;
.super Ljava/lang/Thread;
.source "DownloadAccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ofn;->setState(I)V
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
    .line 349
    iput-object p1, p0, Lc8/jfn;->this$0:Lc8/ofn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 353
    iget-object v0, p0, Lc8/jfn;->this$0:Lc8/ofn;

    invoke-static {v0}, Lc8/ofn;->access$300(Lc8/ofn;)Lc8/Sen;

    move-result-object v0

    invoke-static {v0}, Lc8/rfn;->updateLegalInfo(Lc8/Sen;)V

    .line 354
    return-void
.end method
