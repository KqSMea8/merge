.class public final enum Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Peb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergePathsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Add:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum ExcludeIntersections:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Intersect:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Merge:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum Subtract:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string/jumbo v1, "Merge"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 19
    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string/jumbo v1, "Add"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Add:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 20
    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string/jumbo v1, "Subtract"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Subtract:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 21
    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string/jumbo v1, "Intersect"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Intersect:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 22
    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string/jumbo v1, "ExcludeIntersections"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    sget-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Add:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Subtract:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Intersect:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$000(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1
    .param p0, "x0"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 17
    invoke-static {p0}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v0

    return-object v0
.end method

.method private static forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 37
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Merge:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Add:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Subtract:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_0

    .line 33
    :pswitch_3
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->Intersect:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method
