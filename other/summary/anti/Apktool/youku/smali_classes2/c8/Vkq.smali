.class public Lc8/Vkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->delay(JLjava/util/concurrent/TimeUnit;Lc8/amq;Z)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$delay:J

.field final synthetic val$delayError:Z

.field final synthetic val$scheduler:Lc8/amq;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/amq;JLjava/util/concurrent/TimeUnit;Z)V
    .locals 1

    .prologue
    .line 1217
    iput-object p1, p0, Lc8/Vkq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/Vkq;->val$scheduler:Lc8/amq;

    iput-wide p3, p0, Lc8/Vkq;->val$delay:J

    iput-object p5, p0, Lc8/Vkq;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-boolean p6, p0, Lc8/Vkq;->val$delayError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 4
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 1220
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    .line 1222
    .local v0, "set":Lc8/SBq;
    iget-object v2, p0, Lc8/Vkq;->val$scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v1

    .line 1223
    .local v1, "w":Lc8/Zlq;
    invoke-virtual {v0, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 1225
    iget-object v2, p0, Lc8/Vkq;->this$0:Lc8/Plq;

    new-instance v3, Lc8/Ukq;

    invoke-direct {v3, p0, v0, v1, p1}, Lc8/Ukq;-><init>(Lc8/Vkq;Lc8/SBq;Lc8/Zlq;Lc8/Nlq;)V

    invoke-virtual {v2, v3}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 1267
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1217
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Vkq;->call(Lc8/Nlq;)V

    return-void
.end method
