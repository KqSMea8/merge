.class public Lc8/yac;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/Sac;


# instance fields
.field public itemID:Ljava/lang/String;

.field public tips:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCartData(Ljava/lang/String;Ljava/lang/String;)Lc8/yac;
    .locals 1

    new-instance v0, Lc8/yac;

    invoke-direct {v0}, Lc8/yac;-><init>()V

    iput-object p0, v0, Lc8/yac;->itemID:Ljava/lang/String;

    iput-object p1, v0, Lc8/yac;->tips:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/yac;->itemID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "add_cart"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/yac;->tips:Ljava/lang/String;

    return-object v0
.end method
