.class public final enum Lcom/alibaba/motu/crashreportadapter/module/BusinessType;
.super Ljava/lang/Enum;
.source "BusinessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/motu/crashreportadapter/module/BusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum ATLAS_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum IMAGE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum LAUNCHER_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum OTHER_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum WEEX_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum WINDVANE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

.field public static final enum YOUKU_VOD_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "WEEX_ERROR"

    const-string/jumbo v2, "weex js error"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->WEEX_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 9
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "WINDVANE_ERROR"

    const-string/jumbo v2, "windvane error"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->WINDVANE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 10
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "IMAGE_ERROR"

    const-string/jumbo v2, "\u56fe\u7247\u5e93\u9519\u8bef"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->IMAGE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 11
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "ATLAS_ERROR"

    const-string/jumbo v2, "Atlas\u9519\u8bef"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->ATLAS_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 12
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "YOUKU_VOD_ERROR"

    const-string/jumbo v2, "\u4f18\u9177\u70b9\u64ad\u9519\u8bef"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->YOUKU_VOD_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 13
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "LAUNCHER_ERROR"

    const/4 v2, 0x5

    const-string/jumbo v3, "\u542f\u52a8\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->LAUNCHER_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 14
    new-instance v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    const-string/jumbo v1, "OTHER_ERROR"

    const/4 v2, 0x6

    const-string/jumbo v3, "\u5176\u4ed6\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->OTHER_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->WEEX_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->WINDVANE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->IMAGE_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->ATLAS_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->YOUKU_VOD_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->LAUNCHER_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->OTHER_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->$VALUES:[Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->name:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/motu/crashreportadapter/module/BusinessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/motu/crashreportadapter/module/BusinessType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->$VALUES:[Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    invoke-virtual {v0}, [Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    return-object v0
.end method
