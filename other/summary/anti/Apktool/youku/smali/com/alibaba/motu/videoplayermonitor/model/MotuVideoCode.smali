.class public final enum Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;
.super Ljava/lang/Enum;
.source "MotuVideoCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

.field public static final enum H263:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

.field public static final enum H264:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

.field public static final enum HEVC:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

.field public static final enum MP4:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

.field public static final enum OTHER:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

.field public static final enum VP9:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;


# instance fields
.field private final value:I


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
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    const-string/jumbo v1, "H264"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H264:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 9
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    const-string/jumbo v1, "HEVC"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->HEVC:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 10
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    const-string/jumbo v1, "VP9"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->VP9:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 11
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    const-string/jumbo v1, "H263"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H263:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 12
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    const-string/jumbo v1, "MP4"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->MP4:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 13
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->OTHER:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H264:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->HEVC:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->VP9:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H263:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->MP4:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->OTHER:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->$VALUES:[Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->$VALUES:[Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    invoke-virtual {v0}, [Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->value:I

    return v0
.end method
