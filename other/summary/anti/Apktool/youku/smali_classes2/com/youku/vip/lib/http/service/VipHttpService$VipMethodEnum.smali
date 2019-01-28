.class public final enum Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
.super Ljava/lang/Enum;
.source "VipHttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VipMethodEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

.field public static final enum GET:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

.field public static final enum HEAD:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

.field public static final enum PATCH:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

.field public static final enum POST:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;


# instance fields
.field private method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 398
    new-instance v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    const-string/jumbo v1, "GET"

    const-string/jumbo v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->GET:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    .line 399
    new-instance v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    const-string/jumbo v1, "POST"

    const-string/jumbo v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->POST:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    .line 400
    new-instance v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    const-string/jumbo v1, "HEAD"

    const-string/jumbo v2, "HEAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->HEAD:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    .line 401
    new-instance v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    const-string/jumbo v1, "PATCH"

    const-string/jumbo v2, "PATCH"

    invoke-direct {v0, v1, v6, v2}, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->PATCH:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    .line 397
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    sget-object v1, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->GET:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->POST:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->HEAD:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->PATCH:Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->$VALUES:[Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 410
    iput-object p3, p0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->method:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 397
    const-class v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    return-object v0
.end method

.method public static values()[Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->$VALUES:[Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    invoke-virtual {v0}, [Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;

    return-object v0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/youku/vip/lib/http/service/VipHttpService$VipMethodEnum;->method:Ljava/lang/String;

    return-object v0
.end method
