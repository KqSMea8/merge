.class public Lc8/GYo;
.super Ljava/lang/Object;
.source "CardRegistUIView.java"

# interfaces
.implements Lc8/ehn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->doRegistByPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method constructor <init>(Lc8/UYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;

    .prologue
    .line 1152
    iput-object p1, p0, Lc8/GYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lc8/ghn;)V
    .locals 3
    .param p1, "e"    # Lc8/ghn;

    .prologue
    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lc8/ghn;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "errorCode":Ljava/lang/String;
    invoke-static {}, Lc8/Lyo;->getInstance()Lc8/Lyo;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "-500"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    iget-object v1, p0, Lc8/GYo;->this$0:Lc8/UYo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/UYo;->access$1300(Lc8/UYo;Z)V

    .line 1167
    :cond_0
    invoke-static {}, Lc8/Lyo;->getInstance()Lc8/Lyo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Lyo;->showErrorMessage4LoginRegist(Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 1171
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 1156
    new-instance v0, Lc8/TYo;

    iget-object v1, p0, Lc8/GYo;->this$0:Lc8/UYo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/TYo;-><init>(Lc8/UYo;Lc8/BYo;)V

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Lc8/TYo;->sendEmptyMessage(I)Z

    .line 1157
    iget-object v0, p0, Lc8/GYo;->this$0:Lc8/UYo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/UYo;->access$3002(Lc8/UYo;Z)Z

    .line 1158
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 1159
    return-void
.end method
