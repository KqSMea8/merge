.class public Lc8/au;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bu;->topologicalSort([Lc8/Zt;)[Lc8/Zt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field arcsByVertex:[[Lc8/Zt;

.field cursor:I

.field result:[Lc8/Zt;

.field final synthetic this$1:Lc8/bu;

.field final synthetic val$arcs:[Lc8/Zt;

.field visited:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1318
    const-class v0, Lc8/iu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/au;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lc8/bu;[Lc8/Zt;)V
    .locals 2
    .param p1, "this$1"    # Lc8/bu;

    .prologue
    .line 1318
    iput-object p1, p0, Lc8/au;->this$1:Lc8/bu;

    iput-object p2, p0, Lc8/au;->val$arcs:[Lc8/Zt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iget-object v0, p0, Lc8/au;->val$arcs:[Lc8/Zt;

    array-length v0, v0

    new-array v0, v0, [Lc8/Zt;

    iput-object v0, p0, Lc8/au;->result:[Lc8/Zt;

    .line 1320
    iget-object v0, p0, Lc8/au;->result:[Lc8/Zt;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/au;->cursor:I

    .line 1321
    iget-object v0, p0, Lc8/au;->this$1:Lc8/bu;

    iget-object v1, p0, Lc8/au;->val$arcs:[Lc8/Zt;

    invoke-virtual {v0, v1}, Lc8/bu;->groupArcsByFirstVertex([Lc8/Zt;)[[Lc8/Zt;

    move-result-object v0

    iput-object v0, p0, Lc8/au;->arcsByVertex:[[Lc8/Zt;

    .line 1322
    iget-object v0, p0, Lc8/au;->this$1:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/au;->visited:[I

    return-void
.end method


# virtual methods
.method sort()[Lc8/Zt;
    .locals 4

    .prologue
    .line 1347
    const/4 v1, 0x0

    .local v1, "loc":I
    iget-object v2, p0, Lc8/au;->arcsByVertex:[[Lc8/Zt;

    array-length v0, v2

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1348
    invoke-virtual {p0, v1}, Lc8/au;->walk(I)V

    .line 1347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1350
    :cond_0
    sget-boolean v2, Lc8/au;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lc8/au;->cursor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1351
    :cond_1
    iget-object v2, p0, Lc8/au;->result:[Lc8/Zt;

    return-object v2
.end method

.method walk(I)V
    .locals 7
    .param p1, "loc"    # I

    .prologue
    .line 1325
    iget-object v1, p0, Lc8/au;->visited:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1327
    :pswitch_0
    iget-object v1, p0, Lc8/au;->visited:[I

    const/4 v2, 0x1

    aput v2, v1, p1

    .line 1328
    iget-object v1, p0, Lc8/au;->arcsByVertex:[[Lc8/Zt;

    aget-object v2, v1, p1

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1329
    .local v0, "arc":Lc8/Zt;
    iget-object v4, v0, Lc8/Zt;->span:Lc8/du;

    iget v4, v4, Lc8/du;->max:I

    invoke-virtual {p0, v4}, Lc8/au;->walk(I)V

    .line 1330
    iget-object v4, p0, Lc8/au;->result:[Lc8/Zt;

    iget v5, p0, Lc8/au;->cursor:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lc8/au;->cursor:I

    aput-object v0, v4, v5

    .line 1328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1332
    .end local v0    # "arc":Lc8/Zt;
    :cond_1
    iget-object v1, p0, Lc8/au;->visited:[I

    const/4 v2, 0x2

    aput v2, v1, p1

    goto :goto_0

    .line 1337
    :pswitch_1
    sget-boolean v1, Lc8/au;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
