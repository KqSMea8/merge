.class public final enum Lcom/alibaba/verificationsdk/ui/VerifyType;
.super Ljava/lang/Enum;
.source "VerifyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/verificationsdk/ui/VerifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum CALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum LIVENESS:Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum MAIL:Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum NOCAPTCHA:Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum SHAKING:Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum SMS:Lcom/alibaba/verificationsdk/ui/VerifyType;

.field public static final enum TILTBALL:Lcom/alibaba/verificationsdk/ui/VerifyType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "SMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->SMS:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 8
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->CALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 9
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "NOCAPTCHA"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->NOCAPTCHA:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 10
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "MAIL"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->MAIL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 11
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "SHAKING"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->SHAKING:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 12
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "TILTBALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->TILTBALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 13
    new-instance v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v1, "LIVENESS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/verificationsdk/ui/VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->LIVENESS:Lcom/alibaba/verificationsdk/ui/VerifyType;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/verificationsdk/ui/VerifyType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/verificationsdk/ui/VerifyType;->SMS:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->CALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->NOCAPTCHA:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->MAIL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->SHAKING:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->TILTBALL:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/verificationsdk/ui/VerifyType;->LIVENESS:Lcom/alibaba/verificationsdk/ui/VerifyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->$VALUES:[Lcom/alibaba/verificationsdk/ui/VerifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/alibaba/verificationsdk/ui/VerifyType;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/verificationsdk/ui/VerifyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/verificationsdk/ui/VerifyType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/verificationsdk/ui/VerifyType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/verificationsdk/ui/VerifyType;->$VALUES:[Lcom/alibaba/verificationsdk/ui/VerifyType;

    invoke-virtual {v0}, [Lcom/alibaba/verificationsdk/ui/VerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/verificationsdk/ui/VerifyType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/verificationsdk/ui/VerifyType;->value:I

    return v0
.end method
