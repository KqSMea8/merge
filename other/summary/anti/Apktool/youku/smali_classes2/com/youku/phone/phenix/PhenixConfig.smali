.class public final enum Lcom/youku/phone/phenix/PhenixConfig;
.super Ljava/lang/Enum;
.source "PhenixConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/phenix/PhenixConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum CHANNEL_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum Comment_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum DETAIL_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum HOME_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum HOT_SPOT_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum LAIFENG_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum PLANET_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum PLAYER:Lcom/youku/phone/phenix/PhenixConfig;

.field public static final enum VIP_PAGE:Lcom/youku/phone/phenix/PhenixConfig;


# instance fields
.field private final bizId:I

.field private final bizName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "HOME_PAGE"

    const-string/jumbo v2, "HomePage"

    const/16 v3, 0x65

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->HOME_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 9
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "DETAIL_PAGE"

    const-string/jumbo v2, "DetailPage"

    const/16 v3, 0x66

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->DETAIL_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 11
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "VIP_PAGE"

    const-string/jumbo v2, "VipPage"

    const/16 v3, 0x67

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->VIP_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 13
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "PLANET_PAGE"

    const-string/jumbo v2, "PlanetPage"

    const/16 v3, 0x68

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->PLANET_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 15
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "CHANNEL_PAGE"

    const-string/jumbo v2, "ChannelPage"

    const/16 v3, 0x69

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->CHANNEL_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 17
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "HOT_SPOT_PAGE"

    const/4 v2, 0x5

    const-string/jumbo v3, "HotSpotPage"

    const/16 v4, 0x6a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->HOT_SPOT_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 19
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "LAIFENG_PAGE"

    const/4 v2, 0x6

    const-string/jumbo v3, "LaiFengPage"

    const/16 v4, 0x6b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->LAIFENG_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 21
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "Comment_PAGE"

    const/4 v2, 0x7

    const-string/jumbo v3, "CommentPage"

    const/16 v4, 0x6c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->Comment_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    .line 23
    new-instance v0, Lcom/youku/phone/phenix/PhenixConfig;

    const-string/jumbo v1, "PLAYER"

    const/16 v2, 0x8

    const-string/jumbo v3, "Player"

    const/16 v4, 0x6d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youku/phone/phenix/PhenixConfig;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->PLAYER:Lcom/youku/phone/phenix/PhenixConfig;

    .line 5
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/youku/phone/phenix/PhenixConfig;

    sget-object v1, Lcom/youku/phone/phenix/PhenixConfig;->HOME_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/phenix/PhenixConfig;->DETAIL_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/phone/phenix/PhenixConfig;->VIP_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v1, v0, v7

    sget-object v1, Lcom/youku/phone/phenix/PhenixConfig;->PLANET_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v1, v0, v8

    sget-object v1, Lcom/youku/phone/phenix/PhenixConfig;->CHANNEL_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/phone/phenix/PhenixConfig;->HOT_SPOT_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/phone/phenix/PhenixConfig;->LAIFENG_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/youku/phone/phenix/PhenixConfig;->Comment_PAGE:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/youku/phone/phenix/PhenixConfig;->PLAYER:Lcom/youku/phone/phenix/PhenixConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/phone/phenix/PhenixConfig;->$VALUES:[Lcom/youku/phone/phenix/PhenixConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "bizName"    # Ljava/lang/String;
    .param p4, "bizId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/youku/phone/phenix/PhenixConfig;->bizName:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/youku/phone/phenix/PhenixConfig;->bizId:I

    .line 31
    return-void
.end method

.method public static createConfig(Lcom/youku/phone/phenix/PhenixConfig;Ljava/lang/String;)Lc8/nHf;
    .locals 3
    .param p0, "configBiz"    # Lcom/youku/phone/phenix/PhenixConfig;
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "bizIdStr":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/youku/phone/phenix/PhenixConfig;->bizId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixConfig;->bizName:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/nHf;->newBuilderWithName(Ljava/lang/String;Ljava/lang/String;)Lc8/mHf;

    move-result-object v1

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Lc8/mHf;->skip(Z)Lc8/mHf;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lc8/mHf;->build()Lc8/nHf;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/phenix/PhenixConfig;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/youku/phone/phenix/PhenixConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/phenix/PhenixConfig;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/phenix/PhenixConfig;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/youku/phone/phenix/PhenixConfig;->$VALUES:[Lcom/youku/phone/phenix/PhenixConfig;

    invoke-virtual {v0}, [Lcom/youku/phone/phenix/PhenixConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/phenix/PhenixConfig;

    return-object v0
.end method
