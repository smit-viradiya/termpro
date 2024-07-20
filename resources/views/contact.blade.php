@extends('layout.app')
@section('content')
		
		<!-- CONTACT US STARTS
			========================================================================= -->
		<section class="contact-us" id="contact">
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-6">
						<div class="herotext pb-4">
							<h6>Get In Touch</h6>
							<h2>Talk or Meet with Us</h2>
						</div>
						<address class="clearfix d-flex align-items-center pb-2">
							<div class="icon"><i class="las la-map-marker"></i></div>
							<div class="detail">
								<div class="heading">Get Us Here</div>
								1355 Market St, Suite 900<br>
								San Francisco, CA 94<br>
							</div>
						</address>
						<address class="clearfix d-flex align-items-center pb-2">
							<div class="icon"><i class="las la-phone"></i></div>
							<div class="detail">
								<div class="heading">Call Us</div>
								+1 123 456 7890
							</div>
						</address>
						<address class="clearfix d-flex align-items-center">
							<div class="icon"><i class="las la-envelope-open"></i></div>
							<div class="detail">
								<div class="heading">Write Us</div>
								<a href="mailto:info@thisone.com" target="_blank">info@thisone.com</a>
							</div>
						</address>
					</div>
					<div class="col-12 col-lg-6 pt-5 pt-lg-0">
						<div class="herotext pb-4">
							<h6>Estimate Project</h6>
							<h2>Let Us Know Here</h2>
							@if (Session::has('success'))
								
								<div class="alert alert-success">
									{{Session::get('success')}}
								</div>
							@endif
							@if (Session::has('danger'))
								
								<div class="alert alert-danger">
									{{Session::get('danger')}}
								</div>
							@endif
						</div>
						<form action='{{route('contact.post')}}' method='post' name='ContactForm' id='ContactForm'>
							@csrf
							@method('POST')
							<div class="mb-3">
								<input type="text" class="form-control" name="name" placeholder="Enter your name *"  required>
							</div>
							<div class="mb-3">
								<input type="email" class="form-control" name="email" placeholder="Enter your email *"  required>
							</div>
							<div class="mb-3">
								<textarea class="form-control" name="message" placeholder="Enter your message *" rows="3" required></textarea>
							</div>
							<div id='message_post'></div>
							<button type='submit' value='Submit' name='submit' id="submit" class="btn btn-primary mt-3">SEND MESSAGE</button>
						</form>
					</div>
				</div>
			</div>
		</section>
@endsection