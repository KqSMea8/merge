.class public final enum Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
.super Ljava/lang/Enum;
.source "CommonConfigRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

.field public static final enum INVALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

.field public static final enum VALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

.field public static final enum VALIED_BUT_UNSTARTED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    const-string/jumbo v1, "INVALIED"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->INVALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    .line 26
    new-instance v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    const-string/jumbo v1, "VALIED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    .line 30
    new-instance v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    const-string/jumbo v1, "VALIED_BUT_UNSTARTED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED_BUT_UNSTARTED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    sget-object v1, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->INVALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED_BUT_UNSTARTED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->$VALUES:[Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->$VALUES:[Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    invoke-virtual {v0}, [Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    return-object v0
.end method
