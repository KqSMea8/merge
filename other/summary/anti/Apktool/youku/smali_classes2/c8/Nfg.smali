.class public Lc8/Nfg;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Lc8/Ofg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pfg;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Pfg;


# direct methods
.method constructor <init>(Lc8/Pfg;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lc8/Nfg;->this$0:Lc8/Pfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 506
    .local v0, "px":F
    iget-object v1, p0, Lc8/Nfg;->this$0:Lc8/Pfg;

    iget-object v2, p0, Lc8/Nfg;->this$0:Lc8/Pfg;

    invoke-static {v2}, Lc8/Pfg;->access$600(Lc8/Pfg;)I

    move-result v2

    invoke-static {v0, v2}, Lc8/Jgg;->getRealSubPxByWidth(FI)F

    move-result v2

    iput v2, v1, Lc8/Pfg;->blur:F

    .line 508
    .end local v0    # "px":F
    :cond_0
    return-void
.end method
