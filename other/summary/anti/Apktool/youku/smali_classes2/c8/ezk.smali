.class public Lc8/ezk;
.super Ljava/lang/Object;
.source "OfflineSubscribe.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jzk;->getOfflineSubscribeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jzk;


# direct methods
.method constructor <init>(Lc8/jzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jzk;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/ezk;->this$0:Lc8/jzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "==\u83b7\u53d6\u79bb\u7ebf\u8ba2\u9605\u5217\u8868\u5931\u8d25==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    return-void
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 2
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string/jumbo v0, "init_offline_key"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "==\u83b7\u53d6\u79bb\u7ebf\u8ba2\u9605\u5217\u8868\u6210\u529f==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lc8/ezk;->this$0:Lc8/jzk;

    invoke-virtual {v0, p1}, Lc8/jzk;->pareOfflineSubscribeListJsonResult(Ljava/lang/String;)V

    .line 99
    return-void
.end method
