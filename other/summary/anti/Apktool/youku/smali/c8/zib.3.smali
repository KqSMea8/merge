.class public Lc8/zib;
.super Ljava/lang/Object;
.source "AbsLoginByCodeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Aib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Aib;

.field final synthetic val$code:I

.field final synthetic val$resultData:Lc8/Zgb;


# direct methods
.method constructor <init>(Lc8/Aib;ILc8/Zgb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Aib;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/zib;->this$0:Lc8/Aib;

    iput p2, p0, Lc8/zib;->val$code:I

    iput-object p3, p0, Lc8/zib;->val$resultData:Lc8/Zgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    const/16 v1, 0xf

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "login"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/zib;->val$code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/zib;->val$resultData:Lc8/Zgb;

    iget-object v5, v5, Lc8/Zgb;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v0

    .line 71
    .local v0, "errorMessage":Lc8/Mgb;
    const-string/jumbo v1, "AbsLoginByCodeTask"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lc8/zib;->this$0:Lc8/Aib;

    iget v2, v0, Lc8/Mgb;->code:I

    iget-object v3, v0, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/Aib;->doWhenResultFail(ILjava/lang/String;)V

    .line 73
    return-void
.end method
