.class public Lc8/Adc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnInitFinishListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lc8/Adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUMIDInitFinishedEx(Ljava/lang/String;I)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # I

    .prologue
    .line 164
    move v0, p2

    .line 165
    .local v0, "code":I
    iget-object v1, p0, Lc8/Adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    new-instance v2, Lc8/zdc;

    invoke-direct {v2, p0, v0}, Lc8/zdc;-><init>(Lc8/Adc;I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method
