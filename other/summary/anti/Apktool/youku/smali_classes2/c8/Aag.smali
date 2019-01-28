.class public Lc8/Aag;
.super Ljava/lang/Object;
.source "WXRenderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cag;->runOnThread(Ljava/lang/String;Lc8/sag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cag;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$task:Lc8/sag;


# direct methods
.method constructor <init>(Lc8/Cag;Ljava/lang/String;Lc8/sag;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lc8/Aag;->this$0:Lc8/Cag;

    iput-object p2, p0, Lc8/Aag;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lc8/Aag;->val$task:Lc8/sag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lc8/Aag;->this$0:Lc8/Cag;

    invoke-static {v0}, Lc8/Cag;->access$000(Lc8/Cag;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lc8/Aag;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lc8/Aag;->val$task:Lc8/sag;

    invoke-interface {v0}, Lc8/sag;->execute()V

    goto :goto_0
.end method
