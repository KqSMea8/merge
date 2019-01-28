.class public final enum Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum SHOWITEM:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

.field public static final enum SHOWSHOP:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

.field public static final enum SHOWURL:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

.field private static final synthetic a:[Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    const-string/jumbo v1, "SHOWITEM"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWITEM:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    const-string/jumbo v1, "SHOWSHOP"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWSHOP:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    const-string/jumbo v1, "SHOWURL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWURL:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWITEM:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWSHOP:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWURL:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->a:[Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->a:[Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    return-object v0
.end method
