.class public final enum Lcom/youku/uplayer/FileUtils$FileState;
.super Ljava/lang/Enum;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VLn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/uplayer/FileUtils$FileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/uplayer/FileUtils$FileState;

.field public static final enum FState_Dir:Lcom/youku/uplayer/FileUtils$FileState;

.field public static final enum FState_File:Lcom/youku/uplayer/FileUtils$FileState;

.field public static final enum FState_None:Lcom/youku/uplayer/FileUtils$FileState;

.field public static final enum FState_Other:Lcom/youku/uplayer/FileUtils$FileState;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/youku/uplayer/FileUtils$FileState;

    const-string/jumbo v1, "FState_Dir"

    const-string/jumbo v2, "I am director!"

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/uplayer/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_Dir:Lcom/youku/uplayer/FileUtils$FileState;

    .line 72
    new-instance v0, Lcom/youku/uplayer/FileUtils$FileState;

    const-string/jumbo v1, "FState_File"

    const-string/jumbo v2, "I am file!"

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/uplayer/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_File:Lcom/youku/uplayer/FileUtils$FileState;

    .line 73
    new-instance v0, Lcom/youku/uplayer/FileUtils$FileState;

    const-string/jumbo v1, "FState_None"

    const-string/jumbo v2, "I am a ghost!"

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/uplayer/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_None:Lcom/youku/uplayer/FileUtils$FileState;

    .line 74
    new-instance v0, Lcom/youku/uplayer/FileUtils$FileState;

    const-string/jumbo v1, "FState_Other"

    const-string/jumbo v2, "I am not human!"

    invoke-direct {v0, v1, v6, v2}, Lcom/youku/uplayer/FileUtils$FileState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_Other:Lcom/youku/uplayer/FileUtils$FileState;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/uplayer/FileUtils$FileState;

    sget-object v1, Lcom/youku/uplayer/FileUtils$FileState;->FState_Dir:Lcom/youku/uplayer/FileUtils$FileState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/uplayer/FileUtils$FileState;->FState_File:Lcom/youku/uplayer/FileUtils$FileState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/uplayer/FileUtils$FileState;->FState_None:Lcom/youku/uplayer/FileUtils$FileState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/uplayer/FileUtils$FileState;->FState_Other:Lcom/youku/uplayer/FileUtils$FileState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/uplayer/FileUtils$FileState;->$VALUES:[Lcom/youku/uplayer/FileUtils$FileState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/youku/uplayer/FileUtils$FileState;->tag:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/uplayer/FileUtils$FileState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/youku/uplayer/FileUtils$FileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/uplayer/FileUtils$FileState;

    return-object v0
.end method

.method public static values()[Lcom/youku/uplayer/FileUtils$FileState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/youku/uplayer/FileUtils$FileState;->$VALUES:[Lcom/youku/uplayer/FileUtils$FileState;

    invoke-virtual {v0}, [Lcom/youku/uplayer/FileUtils$FileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/uplayer/FileUtils$FileState;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/uplayer/FileUtils$FileState;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/uplayer/FileUtils$FileState;->tag:Ljava/lang/String;

    return-object v0
.end method
