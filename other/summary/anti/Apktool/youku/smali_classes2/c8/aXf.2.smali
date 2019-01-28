.class public Lc8/aXf;
.super Ljava/lang/Object;
.source "WXJSObject.java"


# static fields
.field public static final JSON:I = 0x3

.field public static final NUMBER:I = 0x1

.field public static final String:I = 0x2


# instance fields
.field public data:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lc8/aXf;->type:I

    .line 35
    iput-object p2, p0, Lc8/aXf;->data:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_1

    .line 41
    iput v2, p0, Lc8/aXf;->type:I

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/aXf;->data:Ljava/lang/Object;

    .line 61
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iput-object p1, p0, Lc8/aXf;->data:Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 48
    iput v1, p0, Lc8/aXf;->type:I

    .line 49
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lc8/aXf;->data:Ljava/lang/Object;

    goto :goto_0

    .line 50
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 51
    iput v1, p0, Lc8/aXf;->type:I

    goto :goto_0

    .line 52
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 53
    iput v1, p0, Lc8/aXf;->type:I

    .line 54
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lc8/aXf;->data:Ljava/lang/Object;

    goto :goto_0

    .line 55
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 56
    iput v2, p0, Lc8/aXf;->type:I

    goto :goto_0

    .line 57
    :cond_5
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lc8/aXf;->type:I

    .line 59
    invoke-static {p1, v1}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/aXf;->data:Ljava/lang/Object;

    goto :goto_0
.end method
