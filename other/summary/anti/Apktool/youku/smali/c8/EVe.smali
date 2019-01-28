.class public Lc8/EVe;
.super Ljava/lang/Object;
.source "AppUtdid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FVe;->uploadAppUtdid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/FVe;


# direct methods
.method constructor <init>(Lc8/FVe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/FVe;

    .prologue
    .line 169
    iput-object p1, p0, Lc8/EVe;->this$0:Lc8/FVe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 173
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 176
    invoke-static {}, Lc8/IVe;->getInstance()Lc8/IVe;

    move-result-object v2

    iget-object v3, p0, Lc8/EVe;->this$0:Lc8/FVe;

    invoke-static {v3}, Lc8/FVe;->access$000(Lc8/FVe;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/IVe;->sendBroadCast(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lc8/EVe;->this$0:Lc8/FVe;

    invoke-static {v2}, Lc8/FVe;->access$100(Lc8/FVe;)V

    .line 179
    invoke-static {}, Lc8/bWe;->getInstance()Lc8/bWe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bWe;->requestAppList()V

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "mUploadStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/EVe;->this$0:Lc8/FVe;

    invoke-static {v2}, Lc8/FVe;->access$000(Lc8/FVe;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/YVe;->buildUtdidFp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {}, Lc8/ZVe;->getInstance()Lc8/ZVe;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/ZVe;->insertStringList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "mUploadStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
