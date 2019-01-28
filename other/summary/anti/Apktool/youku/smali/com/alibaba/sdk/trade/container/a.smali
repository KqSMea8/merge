.class public final Lcom/alibaba/sdk/trade/container/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "alibc"

    const-string/jumbo v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/eac;->a(ILjava/lang/Object;)V

    const-string/jumbo v0, "BCPCSDK"

    const-string/jumbo v1, "PacketContainer_Init"

    const-string/jumbo v2, "180101"

    const-string/jumbo v3, "NBSDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1, v2, v3}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string/jumbo v0, "alibc"

    const-string/jumbo v1, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lc8/uac;

    invoke-direct {v0}, Lc8/uac;-><init>()V

    invoke-static {v0}, Lc8/hac;->a(Lc8/gac;)V

    invoke-static {}, Lc8/KZb;->initPlugin()V

    invoke-static {}, Lc8/pac;->a()V

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/eac;->a(ILjava/lang/Object;)V

    const-string/jumbo v0, "BCPCSDK"

    const-string/jumbo v1, "PacketContainer_Init"

    invoke-static {v0, v1}, Lc8/wac;->sendUseabilitySuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
