.class public final enum Lcom/alibaba/baichuan/android/trade/model/ResultType;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum TYPECART:Lcom/alibaba/baichuan/android/trade/model/ResultType;

.field public static final enum TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

.field private static final synthetic a:[Lcom/alibaba/baichuan/android/trade/model/ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;

    const-string/jumbo v1, "TYPECART"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/model/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPECART:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;

    const-string/jumbo v1, "TYPEPAY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/baichuan/android/trade/model/ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/baichuan/android/trade/model/ResultType;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPECART:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;->a:[Lcom/alibaba/baichuan/android/trade/model/ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/model/ResultType;
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/baichuan/android/trade/model/ResultType;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/ResultType;->a:[Lcom/alibaba/baichuan/android/trade/model/ResultType;

    invoke-virtual {v0}, [Lcom/alibaba/baichuan/android/trade/model/ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/baichuan/android/trade/model/ResultType;

    return-object v0
.end method
