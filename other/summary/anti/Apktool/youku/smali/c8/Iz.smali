.class public Lc8/Iz;
.super Landroid/util/Property;
.source "DefaultProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lc8/Kz;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Kz;


# direct methods
.method constructor <init>(Lc8/Kz;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Kz;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 251
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    iput-object p1, p0, Lc8/Iz;->this$0:Lc8/Kz;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lc8/Kz;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lc8/Kz;

    .prologue
    .line 253
    invoke-virtual {p1}, Lc8/Kz;->getCurrentSweepAngle()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    check-cast p1, Lc8/Kz;

    invoke-virtual {p0, p1}, Lc8/Iz;->get(Lc8/Kz;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lc8/Kz;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lc8/Kz;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 257
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lc8/Kz;->setCurrentSweepAngle(F)V

    .line 258
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Lc8/Kz;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lc8/Iz;->set(Lc8/Kz;Ljava/lang/Float;)V

    return-void
.end method
