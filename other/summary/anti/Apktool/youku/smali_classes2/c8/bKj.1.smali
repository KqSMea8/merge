.class public Lc8/bKj;
.super Ljava/lang/Object;
.source "CallRuleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aKj;
    }
.end annotation


# static fields
.field private static callMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/aKj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/bKj;->callMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static obtainCallType(Ljava/lang/String;Lcom/youku/network/config/YKNetworkConfig$CallType;)Lcom/youku/network/config/YKNetworkConfig$CallType;
    .locals 6
    .param p0, "strategyName"    # Ljava/lang/String;
    .param p1, "defaultCallType"    # Lcom/youku/network/config/YKNetworkConfig$CallType;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    .end local p1    # "defaultCallType":Lcom/youku/network/config/YKNetworkConfig$CallType;
    :goto_0
    return-object p1

    .line 41
    .restart local p1    # "defaultCallType":Lcom/youku/network/config/YKNetworkConfig$CallType;
    :cond_0
    const-wide/16 v2, 0x0

    .line 43
    .local v2, "percentage":D
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v4, "percentage"

    const-string/jumbo v5, "0"

    invoke-virtual {v1, p0, v4, v5}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 49
    :goto_1
    invoke-static {p0, v2, v3, p1}, Lc8/bKj;->obtainCallTypeImpl(Ljava/lang/String;DLcom/youku/network/config/YKNetworkConfig$CallType;)Lcom/youku/network/config/YKNetworkConfig$CallType;

    move-result-object p1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 46
    const-string/jumbo v1, "CallRuleStrategy"

    const-string/jumbo v4, "orange error"

    invoke-static {v1, v4}, Lc8/nSh;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static obtainCallTypeImpl(Ljava/lang/String;DLcom/youku/network/config/YKNetworkConfig$CallType;)Lcom/youku/network/config/YKNetworkConfig$CallType;
    .locals 9
    .param p0, "strategyName"    # Ljava/lang/String;
    .param p1, "percentage"    # D
    .param p3, "defaultCallType"    # Lcom/youku/network/config/YKNetworkConfig$CallType;

    .prologue
    .line 55
    sget-object v0, Lc8/bKj;->callMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/aKj;

    .line 56
    .local v8, "ruleCall":Lc8/aKj;
    if-eqz v8, :cond_0

    .line 57
    iget-wide v0, v8, Lc8/aKj;->percentage:D

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lc8/IDj;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, v8, Lc8/aKj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 81
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v8, Lc8/aKj;

    .end local v8    # "ruleCall":Lc8/aKj;
    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lc8/aKj;-><init>(Lc8/ZJj;)V

    .line 63
    .restart local v8    # "ruleCall":Lc8/aKj;
    :cond_1
    iput-wide p1, v8, Lc8/aKj;->percentage:D

    .line 65
    const/4 v7, 0x0

    .line 67
    .local v7, "isHit":Z
    :try_start_0
    invoke-static {p0, p1, p2}, Lc8/HDj;->switchHit(Ljava/lang/String;D)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 73
    :goto_1
    if-eqz v7, :cond_2

    .line 74
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->MTOP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    iput-object v0, v8, Lc8/aKj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 79
    :goto_2
    sget-object v0, Lc8/bKj;->callMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, v8, Lc8/aKj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    goto :goto_0

    .line 68
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const-string/jumbo v0, "CallRuleStrategy"

    const-string/jumbo v1, "RuleSwitcher switchHit error"

    invoke-static {v0, v1}, Lc8/nSh;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    iput-object p3, v8, Lc8/aKj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    goto :goto_2
.end method
