.class public Lcom/youku/vo/Initial$Vip;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vip"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x25d397487dab94b1L


# instance fields
.field public h5_url:Ljava/lang/String;

.field public type:I

.field public vip_tab:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput v0, p0, Lcom/youku/vo/Initial$Vip;->type:I

    .line 463
    iput v0, p0, Lcom/youku/vo/Initial$Vip;->vip_tab:I

    return-void
.end method
