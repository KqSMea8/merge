.class public Lc8/RG;
.super Ljava/lang/Object;
.source "AppResConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfo"
.end annotation


# instance fields
.field public headers:Lorg/json/JSONObject;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lc8/SG;

.field public url:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/SG;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lc8/RG;->this$0:Lc8/SG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
