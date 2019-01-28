.class public Lc8/nLj;
.super Lc8/Cof;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oLj;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/oLj;


# direct methods
.method constructor <init>(Lc8/oLj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/oLj;

    .prologue
    .line 1037
    iput-object p1, p0, Lc8/nLj;->this$1:Lc8/oLj;

    invoke-direct {p0}, Lc8/Cof;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    .line 1041
    :try_start_0
    invoke-static {p1}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1043
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
