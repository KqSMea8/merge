.class public final Lcom/youku/phone/Youku$12;
.super Ljava/util/HashMap;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 769
    const-string/jumbo v0, "powermsg-youku"

    const-string/jumbo v1, "com.youku.phone.mkt.AccsReceiverService"

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/Youku$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string/jumbo v0, "pmmonitor-youku"

    const-string/jumbo v1, "com.youku.phone.mkt.AccsReceiverService"

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/Youku$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string/jumbo v0, "VIPDynamicPushService"

    const-string/jumbo v1, "com.youku.vip.service.AccsReceiverService"

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/Youku$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-void
.end method
