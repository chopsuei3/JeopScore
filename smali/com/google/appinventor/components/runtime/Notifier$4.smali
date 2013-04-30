.class Lcom/google/appinventor/components/runtime/Notifier$4;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Notifier;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$4;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$4;->this$0:Lcom/google/appinventor/components/runtime/Notifier;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->AfterChoosing(Ljava/lang/String;)V

    .line 151
    return-void
.end method
