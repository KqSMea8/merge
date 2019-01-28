.class public Lc8/SYb;
.super Ljava/lang/Object;
.source "ViewTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReqTag"
.end annotation


# instance fields
.field final groupId:Ljava/lang/String;

.field final operationName:Ljava/lang/String;

.field final params:Ljava/lang/String;

.field final task:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/NYb;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/UYb;


# direct methods
.method public constructor <init>(Lc8/UYb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/NYb;)V
    .locals 1
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "operationName"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/lang/String;
    .param p5, "task"    # Lc8/NYb;

    .prologue
    .line 375
    iput-object p1, p0, Lc8/SYb;->this$0:Lc8/UYb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p2, p0, Lc8/SYb;->groupId:Ljava/lang/String;

    .line 377
    iput-object p3, p0, Lc8/SYb;->operationName:Ljava/lang/String;

    .line 378
    iput-object p4, p0, Lc8/SYb;->params:Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/SYb;->task:Ljava/lang/ref/WeakReference;

    .line 380
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReqTag{groupId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/SYb;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", operationName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/SYb;->operationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/SYb;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
