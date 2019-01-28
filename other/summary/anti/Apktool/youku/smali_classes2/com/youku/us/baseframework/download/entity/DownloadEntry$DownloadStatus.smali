.class public final enum Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
.super Ljava/lang/Enum;
.source "DownloadEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/us/baseframework/download/entity/DownloadEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum connecting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum extend:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum idle:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum resume:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

.field public static final enum waiting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "idle"

    invoke-direct {v0, v1, v3}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->idle:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 88
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "waiting"

    invoke-direct {v0, v1, v4}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->waiting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 90
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "connecting"

    invoke-direct {v0, v1, v5}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->connecting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 92
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "downloading"

    invoke-direct {v0, v1, v6}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 94
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "pause"

    invoke-direct {v0, v1, v7}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 96
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "resume"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->resume:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 98
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "cancel"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 100
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "done"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 102
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "error"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 104
    new-instance v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    const-string/jumbo v1, "extend"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->extend:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->idle:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->waiting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->connecting:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->downloading:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->pause:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->resume:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->done:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->error:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->extend:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->$VALUES:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->$VALUES:[Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    invoke-virtual {v0}, [Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    return-object v0
.end method
