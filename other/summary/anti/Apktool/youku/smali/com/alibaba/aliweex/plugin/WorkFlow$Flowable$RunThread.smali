.class public final enum Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;
.super Ljava/lang/Enum;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

.field public static final enum CURRENT:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

.field public static final enum NEW:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

.field public static final enum SUB:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

.field public static final enum UI:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    new-instance v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    const-string/jumbo v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->CURRENT:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 607
    new-instance v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    const-string/jumbo v1, "UI"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->UI:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 608
    new-instance v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    const-string/jumbo v1, "SUB"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->SUB:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 609
    new-instance v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->NEW:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    .line 605
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    sget-object v1, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->CURRENT:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->UI:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->SUB:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->NEW:Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->$VALUES:[Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

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
    .line 605
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 605
    const-class v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->$VALUES:[Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    invoke-virtual {v0}, [Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable$RunThread;

    return-object v0
.end method
