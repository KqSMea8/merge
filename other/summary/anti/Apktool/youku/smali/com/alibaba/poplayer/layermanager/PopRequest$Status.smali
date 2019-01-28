.class public final enum Lcom/alibaba/poplayer/layermanager/PopRequest$Status;
.super Ljava/lang/Enum;
.source "PopRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/poplayer/layermanager/PopRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

.field public static final enum READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

.field public static final enum REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

.field public static final enum SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

.field public static final enum SUSPENDED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

.field public static final enum WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    const-string/jumbo v1, "WAITTING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 23
    new-instance v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 24
    new-instance v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    const-string/jumbo v1, "REMOVED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 25
    new-instance v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    const-string/jumbo v1, "SUSPENDED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SUSPENDED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 26
    new-instance v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    const-string/jumbo v1, "SHOWING"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    sget-object v1, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SUSPENDED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->$VALUES:[Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/poplayer/layermanager/PopRequest$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/poplayer/layermanager/PopRequest$Status;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->$VALUES:[Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v0}, [Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    return-object v0
.end method
