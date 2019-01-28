.class public final enum Lcom/tmall/wireless/ant/lifecycle/FetchModel;
.super Ljava/lang/Enum;
.source "FetchModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tmall/wireless/ant/lifecycle/FetchModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmall/wireless/ant/lifecycle/FetchModel;

.field public static final enum PULL:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

.field public static final enum PUSH:Lcom/tmall/wireless/ant/lifecycle/FetchModel;


# instance fields
.field public final model:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    const-string/jumbo v1, "PULL"

    const-string/jumbo v2, "pull"

    invoke-direct {v0, v1, v3, v2}, Lcom/tmall/wireless/ant/lifecycle/FetchModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->PULL:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    .line 8
    new-instance v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    const-string/jumbo v1, "PUSH"

    const-string/jumbo v2, "push"

    invoke-direct {v0, v1, v4, v2}, Lcom/tmall/wireless/ant/lifecycle/FetchModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->PUSH:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    sget-object v1, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->PULL:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->PUSH:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->$VALUES:[Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->model:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmall/wireless/ant/lifecycle/FetchModel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    return-object v0
.end method

.method public static values()[Lcom/tmall/wireless/ant/lifecycle/FetchModel;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->$VALUES:[Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    invoke-virtual {v0}, [Lcom/tmall/wireless/ant/lifecycle/FetchModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    return-object v0
.end method
