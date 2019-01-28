.class public Lcom/ali/mobisecenhance/Invocation;
.super Ljava/lang/Object;
.source "Invocation.java"


# instance fields
.field public args:[Ljava/lang/Object;

.field public tag:Ljava/lang/Object;

.field public thiz:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "thiz"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ali/mobisecenhance/Invocation;->thiz:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public getParamB(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getParamC(I)C
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public getParamD(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getParamF(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getParamI(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getParamJ(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParamL(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParamS(I)S
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getParamZ(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public initThis(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ali/mobisecenhance/Invocation;->thiz:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public setParam(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # B

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, p1

    .line 27
    return-void
.end method

.method public setParam(IC)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # C

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, p1

    .line 35
    return-void
.end method

.method public setParam(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # D

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, p1

    .line 51
    return-void
.end method

.method public setParam(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # F

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p1

    .line 47
    return-void
.end method

.method public setParam(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    .line 39
    return-void
.end method

.method public setParam(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    .line 43
    return-void
.end method

.method public setParam(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 55
    return-void
.end method

.method public setParam(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # S

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, p1

    .line 31
    return-void
.end method

.method public setParam(IZ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "v"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    .line 23
    return-void
.end method
