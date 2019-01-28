.class public Lc8/Ryo;
.super Ljava/lang/Object;
.source "LaiFengManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qyo;
    }
.end annotation


# static fields
.field public static final CHANNEL_NAV_ID:I = 0x38

.field public static final HOME_NAV_ID:I = 0x10

.field public static IsFromLaiFengURL:Z = false

.field public static LF_SDK_PROTOCOL_ENTER_BROADCAST:Ljava/lang/String; = null

.field public static LF_SDK_PROTOCOL_ENTER_HOME:Ljava/lang/String; = null

.field public static LF_SDK_PROTOCOL_ENTER_RECHARGE:Ljava/lang/String; = null

.field public static LF_SDK_PROTOCOL_ENTER_ROOM:Ljava/lang/String; = null

.field public static LF_SDK_PROTOCOL_ENTER_ROOM_BY_UID:Ljava/lang/String; = null

.field public static final SCHEME_INTENT_ACTION:Ljava/lang/String; = "com.youku.laifeng.sdk.SCHEME"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "lfsdk://room/"

    sput-object v0, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_ROOM:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "lfsdk://roomByUid"

    sput-object v0, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_ROOM_BY_UID:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "lfsdk://recharge"

    sput-object v0, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_RECHARGE:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "lfsdk://show"

    sput-object v0, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_BROADCAST:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "lfsdk://home"

    sput-object v0, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_HOME:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Ryo;->IsFromLaiFengURL:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "LaiFengManager"

    iput-object v0, p0, Lc8/Ryo;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lc8/Pyo;)V
    .locals 0
    .param p1, "x0"    # Lc8/Pyo;

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/Ryo;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/Ryo;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lc8/Qyo;->access$100()Lc8/Ryo;

    move-result-object v0

    return-object v0
.end method

.method private startActivityByScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.youku.laifeng.sdk.SCHEME"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method


# virtual methods
.method public enterLaifenBeginShow(Ljava/lang/String;)V
    .locals 3
    .param p1, "cpsStr"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_BROADCAST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?cps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "scheme":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/Ryo;->startActivityByScheme(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public enterLaifengHomePage(Ljava/lang/String;)V
    .locals 3
    .param p1, "cpsStr"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_HOME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?cps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "scheme":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/Ryo;->startActivityByScheme(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public enterLaifengRoom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "cpsString"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_ROOM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?type=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&cps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "scheme":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/Ryo;->startActivityByScheme(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public enterLaifengRoom(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "cpsString"    # Ljava/lang/String;
    .param p3, "roomType"    # I

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/Ryo;->LF_SDK_PROTOCOL_ENTER_ROOM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&cps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "scheme":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/Ryo;->startActivityByScheme(Ljava/lang/String;)V

    .line 72
    return-void
.end method
