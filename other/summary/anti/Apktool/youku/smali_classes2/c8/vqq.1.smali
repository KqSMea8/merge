.class public Lc8/vqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wqq;->call(Lc8/Vlq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/Qlq",
        "<*>;",
        "Lc8/Qlq",
        "<*>;>;"
    }
.end annotation


# instance fields
.field num:I

.field final synthetic this$0:Lc8/wqq;


# direct methods
.method constructor <init>(Lc8/wqq;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc8/vqq;->this$0:Lc8/wqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Qlq;)Lc8/Qlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qlq",
            "<*>;)",
            "Lc8/Qlq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "terminalNotification":Lc8/Qlq;, "Lrx/Notification<*>;"
    iget-object v0, p0, Lc8/vqq;->this$0:Lc8/wqq;

    iget-wide v0, v0, Lc8/wqq;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    .end local p1    # "terminalNotification":Lc8/Qlq;, "Lrx/Notification<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 85
    .restart local p1    # "terminalNotification":Lc8/Qlq;, "Lrx/Notification<*>;"
    :cond_1
    iget v0, p0, Lc8/vqq;->num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/vqq;->num:I

    .line 86
    iget v0, p0, Lc8/vqq;->num:I

    int-to-long v0, v0

    iget-object v2, p0, Lc8/vqq;->this$0:Lc8/wqq;

    iget-wide v2, v2, Lc8/wqq;->count:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 87
    iget v0, p0, Lc8/vqq;->num:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lc8/Qlq;->createOnNext(Ljava/lang/Object;)Lc8/Qlq;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lc8/Qlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/vqq;->call(Lc8/Qlq;)Lc8/Qlq;

    move-result-object v0

    return-object v0
.end method
