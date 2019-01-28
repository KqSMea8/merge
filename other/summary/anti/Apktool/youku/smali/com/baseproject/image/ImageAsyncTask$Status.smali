.class public final enum Lcom/baseproject/image/ImageAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baseproject/image/ImageAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baseproject/image/ImageAsyncTask$Status;

.field public static final enum FINISHED:Lcom/baseproject/image/ImageAsyncTask$Status;

.field public static final enum PENDING:Lcom/baseproject/image/ImageAsyncTask$Status;

.field public static final enum RUNNING:Lcom/baseproject/image/ImageAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$Status;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/baseproject/image/ImageAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->PENDING:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 71
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$Status;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/baseproject/image/ImageAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->RUNNING:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 75
    new-instance v0, Lcom/baseproject/image/ImageAsyncTask$Status;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/baseproject/image/ImageAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->FINISHED:Lcom/baseproject/image/ImageAsyncTask$Status;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baseproject/image/ImageAsyncTask$Status;

    sget-object v1, Lcom/baseproject/image/ImageAsyncTask$Status;->PENDING:Lcom/baseproject/image/ImageAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baseproject/image/ImageAsyncTask$Status;->RUNNING:Lcom/baseproject/image/ImageAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baseproject/image/ImageAsyncTask$Status;->FINISHED:Lcom/baseproject/image/ImageAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->$VALUES:[Lcom/baseproject/image/ImageAsyncTask$Status;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baseproject/image/ImageAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/baseproject/image/ImageAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baseproject/image/ImageAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/baseproject/image/ImageAsyncTask$Status;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/baseproject/image/ImageAsyncTask$Status;->$VALUES:[Lcom/baseproject/image/ImageAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/baseproject/image/ImageAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baseproject/image/ImageAsyncTask$Status;

    return-object v0
.end method
