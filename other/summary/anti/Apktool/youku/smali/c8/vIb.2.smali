.class public Lc8/vIb;
.super Ljava/lang/Object;
.source "AlibcPromotionSDK.java"

# interfaces
.implements Lc8/VFb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yIb;->sendTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/qIb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yIb;

.field final synthetic val$callback:Lc8/qIb;


# direct methods
.method constructor <init>(Lc8/yIb;Lc8/qIb;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lc8/vIb;->this$0:Lc8/yIb;

    iput-object p2, p0, Lc8/vIb;->val$callback:Lc8/qIb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "networkResponse"    # Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/vIb;->val$callback:Lc8/qIb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vIb;->val$callback:Lc8/qIb;

    iget-object v1, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorCode:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/qIb;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onSuccess(ILcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "networkResponse"    # Lcom/alibaba/baichuan/android/trade/adapter/mtop/NetworkResponse;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/vIb;->val$callback:Lc8/qIb;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/vIb;->val$callback:Lc8/qIb;

    invoke-interface {v0}, Lc8/qIb;->onSuccess()V

    .line 48
    :cond_0
    return-void
.end method
