.class public Lc8/Lco;
.super Ljava/lang/Object;
.source "UrlQueryExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterValuePair"
.end annotation


# instance fields
.field public mParameter:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Lc8/Nco;


# direct methods
.method public constructor <init>(Lc8/Nco;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nco;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lc8/Lco;->this$0:Lc8/Nco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lc8/Lco;->mParameter:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lc8/Lco;->mValue:Ljava/lang/String;

    .line 70
    return-void
.end method
